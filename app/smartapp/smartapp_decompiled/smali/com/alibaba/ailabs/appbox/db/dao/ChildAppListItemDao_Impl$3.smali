.class Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "ChildAppListItemDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl$3;->this$0:Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;)V
    .locals 3

    .line 121
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 122
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getAppid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 123
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getAppid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 127
    :goto_0
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getActionValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 128
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 130
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getActionValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 132
    :goto_1
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getAppName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 133
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 135
    :cond_2
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 137
    :goto_2
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getBusinessType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 138
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 140
    :cond_3
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getBusinessType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_3
    const/4 v0, 0x6

    .line 142
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getAppVersionCode()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 143
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_4

    .line 144
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 146
    :cond_4
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 148
    :goto_4
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_5

    .line 149
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 151
    :cond_5
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_5
    const/16 v0, 0x9

    .line 153
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getDownloadSize()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xa

    .line 154
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getInstallSize()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 155
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_6

    .line 156
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 158
    :cond_6
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 160
    :goto_6
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getIcon()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    if-nez v0, :cond_7

    .line 161
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 163
    :cond_7
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_7
    const/16 v0, 0xd

    .line 165
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getDeleteType()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 166
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getIsOffline()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    if-nez v0, :cond_8

    .line 167
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_8

    .line 169
    :cond_8
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getIsOffline()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 171
    :goto_8
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getFromType()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    if-nez v0, :cond_9

    .line 172
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_9

    .line 174
    :cond_9
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getFromType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 176
    :goto_9
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getAppid()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    if-nez v0, :cond_a

    .line 177
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_a

    .line 179
    :cond_a
    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;->getAppid()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_a
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 113
    check-cast p2, Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/db/dao/ChildAppListItemDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/alibaba/ailabs/appbox/bean/db/ChildAppListDbBean;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `child_app_list` SET `id` = ?,`appid` = ?,`actionValue` = ?,`appName` = ?,`businessType` = ?,`appVersionCode` = ?,`appVersionName` = ?,`downloadUrl` = ?,`downloadSize` = ?,`installSize` = ?,`packageName` = ?,`icon` = ?,`deleteType` = ?,`isOffline` = ?,`fromType` = ? WHERE `appid` = ?"

    return-object v0
.end method
