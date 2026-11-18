.class Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "AppListItemDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao_Impl;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao_Impl$1;->this$0:Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V
    .locals 3

    .line 41
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 42
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 43
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 47
    :goto_0
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getActionValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 48
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getActionValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 52
    :goto_1
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 53
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 55
    :cond_2
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 57
    :goto_2
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getBusinessType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 58
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 60
    :cond_3
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getBusinessType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_3
    const/4 v0, 0x6

    .line 62
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppVersionCode()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 63
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_4

    .line 64
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 66
    :cond_4
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 68
    :goto_4
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_5

    .line 69
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 71
    :cond_5
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_5
    const/16 v0, 0x9

    .line 73
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getDownloadSize()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xa

    .line 74
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getInstallSize()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 75
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_6

    .line 76
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 78
    :cond_6
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 80
    :goto_6
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getIcon()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    if-nez v0, :cond_7

    .line 81
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 83
    :cond_7
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_7
    const/16 v0, 0xd

    .line 85
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getDeleteType()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 86
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getIsOffline()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    if-nez v0, :cond_8

    .line 87
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_8

    .line 89
    :cond_8
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getIsOffline()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 91
    :goto_8
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getFromType()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    if-nez v0, :cond_9

    .line 92
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_9

    .line 94
    :cond_9
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;->getFromType()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_9
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p2, Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/db/dao/AppListItemDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `applist` (`id`,`appid`,`actionValue`,`appName`,`businessType`,`appVersionCode`,`appVersionName`,`downloadUrl`,`downloadSize`,`installSize`,`packageName`,`icon`,`deleteType`,`isOffline`,`fromType`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
