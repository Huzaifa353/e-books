<?php

namespace Modules\Import\Sidebar;

use Maatwebsite\Sidebar\Item;
use Maatwebsite\Sidebar\Menu;
use Maatwebsite\Sidebar\Group;
use Modules\Base\Sidebar\BaseSidebarExtender;

class SidebarExtender extends BaseSidebarExtender
{
    
    public function extend(Menu $menu)
    {
        $menu->group(clean(trans('import::importer.importer')), function (Group $group) {
            $group->weight(100);
            $group->authorize(
                   $this->auth->hasAccess('admin.importer.index') 
            );
            $group->item(clean(trans('import::importer.importer')), function (Item $item) {
                $item->weight(10);
                $item->icon('fas fa-file-download');
                $item->route('admin.importer.index');
                $item->authorize(
                    $this->auth->hasAccess('admin.importer.index')
                );
            });
        });
    }
}
