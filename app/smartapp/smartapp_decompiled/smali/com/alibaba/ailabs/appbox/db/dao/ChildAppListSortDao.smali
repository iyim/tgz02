.class public interface abstract Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListSortDao;
.super Ljava/lang/Object;
.source "ChildAppListSortDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public varargs abstract delete([Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;)V
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract getAllAppList()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM child_app_list_sort ORDER BY sortIndex "
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUser(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM child_app_list_sort WHERE appid=:appid"
    .end annotation
.end method

.method public varargs abstract insert([Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract update(Ljava/lang/String;I)V
    .annotation build Landroidx/room/Query;
        value = "update child_app_list_sort set sortIndex=:sortInList where appid=:appid"
    .end annotation
.end method

.method public varargs abstract update([Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListSortBean;)V
    .annotation build Landroidx/room/Update;
    .end annotation
.end method
