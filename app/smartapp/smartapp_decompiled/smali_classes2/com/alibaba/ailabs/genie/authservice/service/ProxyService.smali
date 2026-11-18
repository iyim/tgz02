.class public Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;
.super Landroid/app/Service;
.source "ProxyService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProxyService"


# instance fields
.field mAgisManager:Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

.field private mCloudLinkCount:I

.field private mContext:Lcom/alibaba/fastjson/JSONObject;

.field private mGenieApp:Lcom/alibaba/fastjson/JSONObject;

.field private mPermissions:Lcom/alibaba/fastjson/JSONArray;

.field private mRenderDataJsonObject:Lcom/alibaba/fastjson/JSONObject;

.field private mRequestPermissions:Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissions;

.field private mSkillInfo:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;)Lcom/alibaba/fastjson/JSONObject;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mSkillInfo:Lcom/alibaba/fastjson/JSONObject;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mCloudLinkCount:I

    return p0
.end method

.method static synthetic access$110(Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;)I
    .locals 2

    .line 32
    iget v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mCloudLinkCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mCloudLinkCount:I

    return v0
.end method

.method private startNotificationForeground()V
    .locals 6

    .line 223
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    const-string v0, "NFCService"

    const-string v1, "notification"

    .line 225
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 226
    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v3, 0x4

    const-string v4, "\u4e3b\u670d\u52a1"

    invoke-direct {v2, v0, v4, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v3, 0x1

    .line 227
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v5, -0x10000

    .line 228
    invoke-virtual {v2, v5}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 229
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const-string v5, "bottombar notification"

    .line 230
    invoke-virtual {v2, v5}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 236
    :cond_0
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 238
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 239
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "\u8fd0\u884c\u4e2d..."

    .line 240
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/authservice/R$mipmap;->ic_launcher:I

    .line 242
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 243
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/authservice/R$mipmap;->ic_launcher:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 245
    invoke-virtual {p0, v3, v0}, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->startForeground(ILandroid/app/Notification;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 266
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not yet implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()V
    .locals 2

    .line 55
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "====\u4ee3\u7406service"

    const-string v1, "onCreate"

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->startNotificationForeground()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDestroy()V
    .locals 2

    .line 251
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "====\u4ee3\u7406service"

    const-string v1, "onDestroy"

    .line 252
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mRequestPermissions:Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissions;

    .line 254
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mAgisManager:Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    .line 255
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mRenderDataJsonObject:Lcom/alibaba/fastjson/JSONObject;

    .line 256
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mGenieApp:Lcom/alibaba/fastjson/JSONObject;

    .line 257
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mPermissions:Lcom/alibaba/fastjson/JSONArray;

    .line 258
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mContext:Lcom/alibaba/fastjson/JSONObject;

    .line 259
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mSkillInfo:Lcom/alibaba/fastjson/JSONObject;

    const/4 v0, 0x1

    .line 260
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->stopForeground(Z)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string p2, "======"

    const-string p3, "onStartCommand"

    .line 65
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x2

    if-nez p1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->stopSelf()V

    return p2

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->stopSelf()V

    return p2

    :cond_1
    const-string p3, "renderData"

    .line 77
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_2

    goto/16 :goto_3

    .line 83
    :cond_2
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mRenderDataJsonObject:Lcom/alibaba/fastjson/JSONObject;

    .line 90
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mRenderDataJsonObject:Lcom/alibaba/fastjson/JSONObject;

    if-nez p1, :cond_3

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->stopSelf()V

    return p2

    .line 94
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "====:renderData"

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mRenderDataJsonObject:Lcom/alibaba/fastjson/JSONObject;

    const-string p3, "genieApp"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mGenieApp:Lcom/alibaba/fastjson/JSONObject;

    .line 97
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mGenieApp:Lcom/alibaba/fastjson/JSONObject;

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    .line 98
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "====:genieApp"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mGenieApp:Lcom/alibaba/fastjson/JSONObject;

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 100
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mGenieApp:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "genieAppId"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mGenieApp:Lcom/alibaba/fastjson/JSONObject;

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object p1, p3

    move-object v0, p1

    move-object v1, v0

    .line 104
    :goto_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mRenderDataJsonObject:Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "permissions"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mPermissions:Lcom/alibaba/fastjson/JSONArray;

    .line 105
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mPermissions:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v2, :cond_5

    .line 106
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "====:Permissions"

    invoke-static {v2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 108
    :goto_1
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mPermissions:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 109
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mPermissions:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    const-class v4, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Authorized;

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->toJavaObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 113
    :cond_5
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mRenderDataJsonObject:Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "context"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mContext:Lcom/alibaba/fastjson/JSONObject;

    .line 114
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mContext:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_6

    .line 115
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "====:context"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mContext:Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "skillInfo"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mSkillInfo:Lcom/alibaba/fastjson/JSONObject;

    .line 117
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mSkillInfo:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "====:mSkillInfo"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_6
    new-instance v2, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    invoke-direct {v2}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;-><init>()V

    .line 121
    new-instance v3, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    invoke-direct {v3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;-><init>()V

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    .line 124
    new-instance v4, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$GenieAppInfo;

    invoke-direct {v4}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$GenieAppInfo;-><init>()V

    .line 125
    invoke-virtual {v4, v0}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$GenieAppInfo;->setGenieAppId(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v4, v1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$GenieAppInfo;->setType(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v4, p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$GenieAppInfo;->setName(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->setGenieApp(Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$GenieAppInfo;)V

    :cond_7
    if-eqz p3, :cond_8

    .line 131
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    .line 132
    new-instance p1, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;-><init>()V

    .line 133
    invoke-virtual {p1, p3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;->setAuthorized(Ljava/util/List;)V

    .line 134
    invoke-virtual {v3, p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->setPermissions(Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;)V

    .line 136
    :cond_8
    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->setData(Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;)V

    .line 139
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 140
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getGenieApp()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$GenieAppInfo;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 141
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getGenieApp()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$GenieAppInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$GenieAppInfo;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 142
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getGenieApp()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$GenieAppInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$GenieAppInfo;->getGenieAppId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 143
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getGenieApp()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$GenieAppInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$GenieAppInfo;->getType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 144
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getPermissions()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 145
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getPermissions()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;->getAuthorized()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 146
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getPermissions()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;->getAuthorized()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_a

    .line 148
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 155
    const-class p3, Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissions;

    invoke-static {p3}, Lcom/alibaba/genie/waft/gcs/rpc/GenieServiceLoader;->load(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissions;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mRequestPermissions:Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissions;

    .line 156
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mRequestPermissions:Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissions;

    if-nez p3, :cond_9

    .line 157
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->stopSelf()V

    return p2

    .line 160
    :cond_9
    iget p2, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mCloudLinkCount:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    iput p2, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mCloudLinkCount:I

    :try_start_0
    const-string p2, "genie://com.alibaba.ailabs.genie.authservice.service/ProxyService"

    .line 163
    new-instance v1, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService$1;-><init>(Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;)V

    invoke-interface {p3, p2, p1, v1}, Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissions;->cloudRquestPermissions(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/authservice/api/ICloudRequestPermissionListener;)V
    :try_end_0
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 212
    invoke-virtual {p1}, Lcom/taobao/aranger/exception/IPCException;->printStackTrace()V

    .line 215
    :goto_2
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    .line 216
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->getApplication()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return v0

    .line 150
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->stopSelf()V

    return p2

    .line 79
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->stopSelf()V

    return p2
.end method
