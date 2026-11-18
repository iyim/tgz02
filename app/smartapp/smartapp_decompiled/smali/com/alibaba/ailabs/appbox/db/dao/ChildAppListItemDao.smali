.class public interface abstract Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao;
.super Ljava/lang/Object;
.source "ChildAppListItemDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract delete(Ljava/util/List;)V
    .annotation build Landroidx/room/Delete;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public varargs abstract delete([Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;)V
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract deleteAll()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM child_app_list"
    .end annotation
.end method

.method public abstract getAllAppList()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM child_app_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstallList()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT *  from child_app_list INNER JOIN child_app_list_sort ON child_app_list.appid=child_app_list_sort.appid ORDER BY sortIndex"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUser(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM child_app_list WHERE appid=:appid"
    .end annotation
.end method

.method public varargs abstract insert([Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public varargs abstract update([Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;)V
    .annotation build Landroidx/room/Update;
    .end annotation
.end method
