.class public Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;
.super Ljava/lang/Object;
.source "MsgProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor$SingleHolder;
    }
.end annotation


# static fields
.field public static final DREAM_START:I = 0x3

.field public static final DREAM_STOP:I = 0x4

.field public static final FIVE_MINUTE:I = 0x493e0

.field public static final MSG_PUSH_LONG:Ljava/lang/String; = "longTimeSit"

.field public static final MSG_PUSH_SEAT:Ljava/lang/String; = "postureWarning"

.field public static final MSG_PUSH_SLEEP:Ljava/lang/String; = "sleeping"

.field public static final SCREEN_OFF:I = 0x2

.field public static final SCREEN_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TaskService-Msg"

.field public static final THR_MINUTE:I = 0x2bf20


# instance fields
.field private currentMsgType:Ljava/lang/String;

.field private listener:Lcom/alibaba/ailabs/ipc/event/OnEventListener;

.field private longKeep:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private providerApi:Lcom/alibaba/genie/data/provider/api/ProviderApi;

.field private screenState:I

.field private seatKeep:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private sleepKeep:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private stack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private tester:Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->screenState:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->stack:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->sleepKeep:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->seatKeep:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->longKeep:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor$1;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private count()V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->providerApi:Lcom/alibaba/genie/data/provider/api/ProviderApi;

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->currentMsgType:Ljava/lang/String;

    const-string v1, "sleeping"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->providerApi:Lcom/alibaba/genie/data/provider/api/ProviderApi;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/genie/data/provider/api/ProviderApi;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 236
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->providerApi:Lcom/alibaba/genie/data/provider/api/ProviderApi;

    invoke-virtual {v2, v1, v0}, Lcom/alibaba/genie/data/provider/api/ProviderApi;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->currentMsgType:Ljava/lang/String;

    const-string v1, "longTimeSit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->providerApi:Lcom/alibaba/genie/data/provider/api/ProviderApi;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/genie/data/provider/api/ProviderApi;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 241
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->providerApi:Lcom/alibaba/genie/data/provider/api/ProviderApi;

    invoke-virtual {v2, v1, v0}, Lcom/alibaba/genie/data/provider/api/ProviderApi;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->currentMsgType:Ljava/lang/String;

    const-string v1, "postureWarning"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->providerApi:Lcom/alibaba/genie/data/provider/api/ProviderApi;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/genie/data/provider/api/ProviderApi;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 246
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->providerApi:Lcom/alibaba/genie/data/provider/api/ProviderApi;

    invoke-virtual {v2, v1, v0}, Lcom/alibaba/genie/data/provider/api/ProviderApi;->putInt(Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;
    .locals 1

    .line 61
    sget-object v0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor$SingleHolder;->instance:Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;

    return-object v0
.end method

.method private isMsgMode()Z
    .locals 2

    .line 161
    iget v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->screenState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private playSound(Z)V
    .locals 1

    .line 251
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->isMsgMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->playSound(Z)Z

    .line 253
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->count()V

    :cond_0
    return-void
.end method

.method private processLong(I)V
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processLong minute= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskService-Msg"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 172
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->playSound(Z)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    .line 174
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->playSound(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private processOther(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 187
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processOther keep= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " current="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TaskService-Msg"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    if-gtz v2, :cond_0

    .line 192
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-direct {p0, v4}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->playSound(Z)V

    goto/16 :goto_0

    .line 196
    :cond_0
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 197
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v0, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x2bf20

    cmp-long v12, v8, v10

    if-ltz v12, :cond_1

    const-string v2, "time out - reset "

    .line 198
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 200
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-direct {p0, v4}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->playSound(Z)V

    goto/16 :goto_0

    :cond_1
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 204
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    const/4 v8, 0x2

    if-ne v2, v8, :cond_5

    .line 206
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x493e0

    cmp-long v2, v8, v10

    if-ltz v2, :cond_3

    const-string v2, "pass 5min add 1 "

    .line 207
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(1 - 0)="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "s"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  (current -0)="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v6, v0, v6

    div-long v12, v6, v12

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v2, v6, v10

    if-ltz v2, :cond_4

    const-string v2, " first 5min to playSound "

    .line 212
    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-direct {p0, v4}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->playSound(Z)V

    .line 215
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " replace lastIdx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " keep.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 219
    :cond_5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private sendGameSaverBroadCast(Ljava/lang/String;)V
    .locals 2

    .line 275
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.alibaba.ailabs.aicare.tips"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "KEY_TIPS"

    .line 276
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "KEY_TIME"

    const/16 v1, 0x78

    .line 277
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private showScreenOffMsg(Ljava/lang/String;)V
    .locals 3

    .line 294
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->mContext:Landroid/content/Context;

    const-class v2, Lcom/alibaba/ailabs/genie/task/aicare/ui/MsgShowActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 295
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "KEY_TIPS"

    .line 296
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showScreenSaverMsg(Ljava/lang/String;)V
    .locals 3

    .line 283
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.screensaver"

    const-string v2, "com.alibaba.ailabs.genie.screensaver.FlipperDream"

    .line 284
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "KEY_TIPS"

    .line 285
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "KEY_TIME"

    const/16 v1, 0x78

    .line 286
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 287
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 289
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public addStack(Landroid/app/Activity;)V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-ne v1, p1, :cond_0

    return-void

    .line 313
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 316
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearMsg()V
    .locals 2

    const-string v0, "TaskService-Msg"

    const-string v1, "clear msg"

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->sleepKeep:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->seatKeep:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->longKeep:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearStack()V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 321
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getScreenState()I
    .locals 1

    .line 305
    iget v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->screenState:I

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    .line 65
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/alibaba/genie/data/provider/api/ProviderApi;

    const-string v1, "com.alibaba.ailabs.genie.smartapp"

    invoke-direct {v0, p1, v1}, Lcom/alibaba/genie/data/provider/api/ProviderApi;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->providerApi:Lcom/alibaba/genie/data/provider/api/ProviderApi;

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;

    .line 68
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->listener:Lcom/alibaba/ailabs/ipc/event/OnEventListener;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor$1;-><init>(Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->listener:Lcom/alibaba/ailabs/ipc/event/OnEventListener;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/router/message/MessageCenter;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/message/MessageCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->listener:Lcom/alibaba/ailabs/ipc/event/OnEventListener;

    const-string v2, "childAiCareSubscribe"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/ailabs/genie/router/message/MessageCenter;->unsubscribe(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/event/OnEventListener;)V

    .line 83
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/router/message/MessageCenter;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/message/MessageCenter;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->listener:Lcom/alibaba/ailabs/ipc/event/OnEventListener;

    invoke-virtual {p1, v2, v0}, Lcom/alibaba/ailabs/genie/router/message/MessageCenter;->subscribe(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/event/OnEventListener;)V

    .line 86
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/utils/ToolsUtils;->isTestMsg()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 87
    new-instance p1, Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->tester:Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;

    .line 88
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->tester:Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;->testAll()V

    :cond_1
    return-void
.end method

.method public isScreenOffMsgShowing()Z
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public processMsg(Ljava/lang/String;)V
    .locals 6

    const-string v0, "longSitTimeMinute"

    .line 114
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->isMsgMode()Z

    move-result v1

    const-string v2, "TaskService-Msg"

    if-nez v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->clearMsg()V

    const-string p1, "processMsg not in work state"

    .line 116
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 125
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v4, "data"

    .line 126
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v4, "content"

    .line 128
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v5, "extData"

    .line 129
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    if-eqz p1, :cond_2

    const-string v5, "messageType"

    .line 132
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 134
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v1, p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v4, v3

    .line 138
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    :cond_2
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "msgType = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  msg ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iput-object v3, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->currentMsgType:Ljava/lang/String;

    const-string p1, "sleeping"

    .line 143
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 144
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->sleepKeep:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->processOther(Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_3
    const-string p1, "longTimeSit"

    .line 145
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 146
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->processLong(I)V

    goto :goto_3

    :cond_4
    const-string p1, "postureWarning"

    .line 147
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 148
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->seatKeep:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->processOther(Ljava/util/ArrayList;)V

    .line 153
    :goto_3
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->isMsgMode()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 154
    invoke-virtual {p0, v4}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->showMessage(Ljava/lang/String;)V

    goto :goto_4

    .line 156
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ai care not work now! screenState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->screenState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " stack="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void

    :cond_6
    const-string p1, " Invalidate message type"

    .line 150
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setScreenState(I)V
    .locals 0

    .line 301
    iput p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->screenState:I

    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 3

    .line 258
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/utils/ToolsUtils;->isScreenOff(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "TaskService-Msg"

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->isScreenOffMsgShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 264
    :cond_1
    iget v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->screenState:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "screen Saver"

    .line 268
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->showScreenSaverMsg(Ljava/lang/String;)V

    .line 270
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->sendGameSaverBroadCast(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_0
    const-string p1, "Screen On"

    .line 265
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :goto_1
    const-string v0, "screen Off"

    .line 262
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->showScreenOffMsg(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public unInit()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/router/message/MessageCenter;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/message/MessageCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->listener:Lcom/alibaba/ailabs/ipc/event/OnEventListener;

    const-string v2, "childAiCareSubscribe"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/ailabs/genie/router/message/MessageCenter;->unsubscribe(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/event/OnEventListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->clearStack()V

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->sleepKeep:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 99
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->seatKeep:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 100
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->longKeep:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 101
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/utils/ToolsUtils;->isTestMsg()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;->tester:Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/aicare/MsgTester;->clear()V

    :cond_1
    return-void
.end method
