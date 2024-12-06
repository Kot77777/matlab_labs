classdef mask

    methods(Static)

        % Following properties of 'maskInitContext' are avalaible to use:
        %  - BlockHandle 
        %  - MaskObject 
        %  - MaskWorkspace: Use get/set APIs to work with mask workspace.
        function MaskInitialization(maskInitContext)
            m = str2double(get_param(maskInitContext.BlockHandle, 'm'));
            l = str2double(get_param(maskInitContext.BlockHandle, 'l'));
            
            I = m * l^2;
            maskWorkspace = maskInitContext.MaskWorkspace;
            maskWorkspace.set('I', I);

        end

        % Use the code browser on the left to add the callbacks.

    end
end