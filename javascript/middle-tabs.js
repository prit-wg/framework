$(function () {
        var tabContainers = $('div.middletabs > div');
        tabContainers.hide().filter(':first').show();
        
        $('div.middletabs ul.middletabNavigation a').click(function () {
                tabContainers.hide();
                tabContainers.filter(this.hash).show();
                $('div.middletabs ul.middletabNavigation a').removeClass('selected');
                $(this).addClass('selected');
                return false;
        }).filter(':first').click();
});

$(function () {
        var tabContainers = $('div.middletabs2 > div');
        tabContainers.hide().filter(':first').show();
        
        $('div.middletabs2 ul.middletabNavigation2 a').click(function () {
                tabContainers.hide();
                tabContainers.filter(this.hash).show();
                $('div.middletabs2 ul.middletabNavigation2 a').removeClass('selected');
                $(this).addClass('selected');
                return false;
        }).filter(':first').click();
});
