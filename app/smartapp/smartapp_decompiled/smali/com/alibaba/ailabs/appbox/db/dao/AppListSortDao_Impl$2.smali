.class Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "AppListSortDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl$2;->this$0:Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;)V
    .locals 2

    .line 57
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;->getAppid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 58
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;->getAppid()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p2, Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/db/dao/AppListSortDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/alibaba/ailabs/appbox/bean/db/ApplistSortBean;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `applistsort` WHERE `appid` = ?"

    return-object v0
.end method
