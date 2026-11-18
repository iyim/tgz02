.class public Lcom/alibaba/motu/tbrest/SendService$RestThread;
.super Ljava/lang/Object;
.source "SendService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/motu/tbrest/SendService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestThread"
.end annotation


# instance fields
.field private aArg1:Ljava/lang/Object;

.field private aArg2:Ljava/lang/Object;

.field private aArg3:Ljava/lang/Object;

.field private aEventId:I

.field private aExtData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aPage:Ljava/lang/String;

.field private aTimestamp:J

.field private adashxServerHost:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/alibaba/motu/tbrest/SendService;


# direct methods
.method public constructor <init>(Lcom/alibaba/motu/tbrest/SendService;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/alibaba/motu/tbrest/SendService$RestThread;->this$0:Lcom/alibaba/motu/tbrest/SendService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/motu/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lcom/alibaba/motu/tbrest/SendService$RestThread;->this$0:Lcom/alibaba/motu/tbrest/SendService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p3, p0, Lcom/alibaba/motu/tbrest/SendService$RestThread;->context:Landroid/content/Context;

    .line 229
    iput-object p4, p0, Lcom/alibaba/motu/tbrest/SendService$RestThread;->adashxServerHost:Ljava/lang/String;

    .line 230
    iput-wide p5, p0, Lcom/alibaba/motu/tbrest/SendService$RestThread;->aTimestamp:J

    .line 231
    iput-object p7, p0, Lcom/alibaba/motu/tbrest/SendService$RestThread;->aPage:Ljava/lang/String;

    .line 232
    iput p8, p0, Lcom/alibaba/motu/tbrest/SendService$RestThread;->aEventId:I

    .line 233
    iput-object p9, p0, Lcom/alibaba/motu/tbrest/SendService$RestThread;->aArg1:Ljava/lang/Object;

    .line 234
    iput-object p10, p0, Lcom/alibaba/motu/tbrest/SendService$RestThread;->aArg2:Ljava/lang/Object;

    .line 235
    iput-object p11, p0, Lcom/alibaba/motu/tbrest/SendService$RestThread;->aArg3:Ljava/lang/Object;

    .line 236
    iput-object p12, p0, Lcom/alibaba/motu/tbrest/SendService$RestThread;->aExtData:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/motu/tbrest/SendService$RestThread;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/motu/tbrest/SendService$RestThread;->adashxServerHost:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/motu/tbrest/SendService$RestThread;->aTimestamp:J

    iget-object v4, p0, Lcom/alibaba/motu/tbrest/SendService$RestThread;->aPage:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/motu/tbrest/SendService$RestThread;->aEventId:I

    iget-object v6, p0, Lcom/alibaba/motu/tbrest/SendService$RestThread;->aArg1:Ljava/lang/Object;

    iget-object v7, p0, Lcom/alibaba/motu/tbrest/SendService$RestThread;->aArg2:Ljava/lang/Object;

    iget-object v8, p0, Lcom/alibaba/motu/tbrest/SendService$RestThread;->aArg3:Ljava/lang/Object;

    iget-object v9, p0, Lcom/alibaba/motu/tbrest/SendService$RestThread;->aExtData:Ljava/util/Map;

    invoke-static/range {v0 .. v9}, Lcom/alibaba/motu/tbrest/rest/RestReqSend;->sendLog(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "send log asyn error "

    .line 245
    invoke-static {v1, v0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
