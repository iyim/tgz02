.class public Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$ActionInfo;
.super Ljava/lang/Object;
.source "AlarmInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionInfo"
.end annotation


# static fields
.field public static final NAME_MUSIC:Ljava/lang/String; = "playMusic"

.field public static final NAME_TTS:Ljava/lang/String; = "playTts"


# instance fields
.field private name:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private urlIsComplete:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "urlIsComplete"

    const-string v1, "text"

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    .line 422
    iput-boolean v2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$ActionInfo;->urlIsComplete:Z

    :try_start_0
    const-string v3, "name"

    .line 428
    invoke-static {p1, v3}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$ActionInfo;->name:Ljava/lang/String;

    const-string v3, "url"

    .line 429
    invoke-static {p1, v3}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$ActionInfo;->url:Ljava/lang/String;

    .line 430
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 431
    invoke-static {p1, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$ActionInfo;->url:Ljava/lang/String;

    .line 433
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 434
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$ActionInfo;->urlIsComplete:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse action json err, actionJson:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Alarm"

    invoke-static {v1, p1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 439
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$ActionInfo;->urlIsComplete:Z

    if-nez p1, :cond_3

    .line 440
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$ActionInfo;->url:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->jointTtsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$ActionInfo;->url:Ljava/lang/String;

    :cond_3
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$ActionInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isMusic()Z
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$ActionInfo;->name:Ljava/lang/String;

    const-string v1, "playMusic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTts()Z
    .locals 2

    .line 449
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo$ActionInfo;->name:Ljava/lang/String;

    const-string v1, "playTts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
