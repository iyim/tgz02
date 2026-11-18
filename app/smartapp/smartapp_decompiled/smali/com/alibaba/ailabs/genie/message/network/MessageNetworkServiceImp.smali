.class public Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;
.super Ljava/lang/Object;
.source "MessageNetworkServiceImp.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;


# static fields
.field private static final MESSAGE_NAMESPACE:Ljava/lang/String; = "AliGenie.Notify"

.field private static final SCREEN:Ljava/lang/String; = "SCREEN"

.field private static userID:J

.field private static uuID:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->userID:J

    .line 42
    :cond_0
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->uuID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->parseData(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private parseData(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 5

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageCenterEventProcessService(sendEventTo gateway return command ); data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "genie_MessageCenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 393
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gwData---->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MessageCenter"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "commands"

    .line 395
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 396
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 397
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 398
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "payload"

    .line 400
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "payload---->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MessageCenter_payload"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "data"

    .line 403
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dataObj---->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MessageCenter_dataObj"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    const-string/jumbo v1, "success"

    .line 406
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "success---->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MessageCenter_success"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 416
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "model---->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MessageCenter_model"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1
.end method


# virtual methods
.method public getCountUnread(Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V
    .locals 4

    .line 53
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 54
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->uuID:Ljava/lang/String;

    .line 56
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->userID:J

    .line 59
    :cond_0
    sget-wide v1, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->userID:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v1, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->uuID:Ljava/lang/String;

    const-string/jumbo v2, "uuid"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object v1

    .line 62
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$1;-><init>(Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V

    const-string p1, "AliGenie.Notify"

    const-string v3, "CountUnread"

    invoke-virtual {v1, p1, v3, v0, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;)I

    return-void
.end method

.method public listAllMessages(IILcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/alibaba/ailabs/genie/message/network/IMessageCallback<",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;",
            ">;>;)V"
        }
    .end annotation

    .line 158
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 159
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "pageIndex"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "pageSize"

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 162
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->uuID:Ljava/lang/String;

    .line 163
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 164
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    sput-wide p1, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->userID:J

    .line 166
    :cond_0
    sget-wide p1, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->userID:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo p2, "userId"

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object p1, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->uuID:Ljava/lang/String;

    const-string/jumbo p2, "uuid"

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object p1

    .line 169
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$4;

    invoke-direct {v0, p0, p3}, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$4;-><init>(Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V

    const-string p3, "AliGenie.Notify"

    const-string v1, "ListAllMessages"

    invoke-virtual {p1, p3, v1, p2, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;)I

    return-void
.end method

.method public listSubscribeInfos(Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V
    .locals 4

    .line 242
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 243
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->userID:J

    .line 247
    :cond_0
    sget-wide v1, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->userID:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$6;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$6;-><init>(Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V

    const-string p1, "AliGenie.Notify"

    const-string v3, "ListSubscribeInfos"

    invoke-virtual {v1, p1, v3, v0, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;)I

    return-void
.end method

.method public listUnreadMessages(IILcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V
    .locals 2

    .line 202
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 203
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "pageIndex"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "pageSize"

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 206
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->uuID:Ljava/lang/String;

    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 208
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    sput-wide p1, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->userID:J

    .line 210
    :cond_0
    sget-wide p1, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->userID:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo p2, "userId"

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object p1, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->uuID:Ljava/lang/String;

    const-string/jumbo p2, "uuid"

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object p1

    .line 213
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$5;

    invoke-direct {v0, p0, p3}, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$5;-><init>(Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V

    const-string p3, "AliGenie.Notify"

    const-string v1, "ListUnreadMessages"

    invoke-virtual {p1, p3, v1, p2, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;)I

    return-void
.end method

.method public setReadAllMessage(Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V
    .locals 4

    .line 122
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 123
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->uuID:Ljava/lang/String;

    .line 125
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->userID:J

    .line 128
    :cond_0
    sget-wide v1, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->userID:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v1, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->uuID:Ljava/lang/String;

    const-string/jumbo v2, "uuid"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object v1

    .line 131
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$3;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$3;-><init>(Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V

    const-string p1, "AliGenie.Notify"

    const-string v3, "ReadAllMessages"

    invoke-virtual {v1, p1, v3, v0, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;)I

    return-void
.end method

.method public setReadMessages(Ljava/util/List;Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;",
            ")V"
        }
    .end annotation

    .line 88
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v1, "extMsdIds"

    .line 89
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->userID:J

    .line 94
    :cond_0
    sget-wide v1, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->userID:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object p1

    .line 96
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$2;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$2;-><init>(Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V

    const-string p2, "AliGenie.Notify"

    const-string v2, "ReadMessages"

    invoke-virtual {p1, p2, v2, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;)I

    return-void
.end method

.method public subscribe(JLcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V
    .locals 3

    .line 285
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 286
    new-instance v1, Lcom/alibaba/ailabs/genie/message/network/bean/RequestContext;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/message/network/bean/RequestContext;-><init>()V

    const-string v2, "SCREEN"

    .line 287
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/message/network/bean/RequestContext;->setSource(Ljava/lang/String;)V

    .line 288
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "requestContext"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo p2, "subscribeId"

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 291
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 292
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    sput-wide p1, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->userID:J

    .line 294
    :cond_0
    sget-wide p1, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->userID:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo p2, "userId"

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object p1

    .line 296
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$7;

    invoke-direct {v0, p0, p3}, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$7;-><init>(Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V

    const-string p3, "AliGenie.Notify"

    const-string v1, "Subscribe"

    invoke-virtual {p1, p3, v1, p2, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;)I

    return-void
.end method

.method public unSubscribe(JLcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V
    .locals 3

    .line 322
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 323
    new-instance v1, Lcom/alibaba/ailabs/genie/message/network/bean/RequestContext;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/message/network/bean/RequestContext;-><init>()V

    const-string v2, "SCREEN"

    .line 324
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/message/network/bean/RequestContext;->setSource(Ljava/lang/String;)V

    .line 325
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "requestContext"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo p2, "subscribeId"

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 328
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 329
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    sput-wide p1, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->userID:J

    .line 331
    :cond_0
    sget-wide p1, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->userID:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo p2, "userId"

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object p1

    .line 333
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$8;

    invoke-direct {v0, p0, p3}, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$8;-><init>(Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V

    const-string p3, "AliGenie.Notify"

    const-string v1, "Unsubscribe"

    invoke-virtual {p1, p3, v1, p2, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;)I

    return-void
.end method

.method public updateSwitch(Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V
    .locals 3

    .line 358
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 359
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v1, "subscribeInfo"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 361
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->uuID:Ljava/lang/String;

    .line 362
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->userID:J

    .line 365
    :cond_0
    sget-wide v1, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->userID:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object p1

    .line 367
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$9;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$9;-><init>(Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V

    const-string p2, "AliGenie.Notify"

    const-string v2, "UpdateSwitch"

    invoke-virtual {p1, p2, v2, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;)I

    return-void
.end method
