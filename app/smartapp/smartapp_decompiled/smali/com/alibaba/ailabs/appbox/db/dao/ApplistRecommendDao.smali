.class public interface abstract Lcom/alibaba/ailabs/appbox/db/dao/ApplistRecommendDao;
.super Ljava/lang/Object;
.source "ApplistRecommendDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public varargs abstract delete([Lcom/alibaba/ailabs/appbox/bean/ApplistRecomendItem;)V
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract getApplistRecomends()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM applist_recomend "
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/ApplistRecomendItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getApplistRecomendsCon()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM applist_recomend "
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRecommendsByid(Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/ApplistRecomendItem;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM applist_recomend WHERE appid=:appid"
    .end annotation
.end method

.method public abstract insert(Ljava/util/List;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/ApplistRecomendItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public varargs abstract insert([Lcom/alibaba/ailabs/appbox/bean/ApplistRecomendItem;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public varargs abstract update([Lcom/alibaba/ailabs/appbox/bean/ApplistRecomendItem;)V
    .annotation build Landroidx/room/Update;
    .end annotation
.end method
