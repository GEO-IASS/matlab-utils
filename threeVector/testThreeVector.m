function h = testThreeVector()

    usePanel = false;
    figure(1); clf; set(gcf, 'Color', 'w');

    if usePanel
        p = OuterPanel();
        R = 2;
        C = 2;
        p.pack(R,C);

        for r = 1:R
            for c = 1:C
                p(r,c).select();
                doTV();
            end
        end
    else
        h = doTV();
    end

end


function h = doTV()
    P = peaks(40);
    C = del2(P);
    h = surf(P,C);
    colormap hot
    view([322 39]);

    hold on; axis off; axis tight;
    set(gca, 'LooseInset', [ 0 0 0 0 ]);
    xlabel('X');
    ylabel('Y');
    zlabel('Z');

    tv = ThreeVector(gca);

    %rotate3d on;
end

