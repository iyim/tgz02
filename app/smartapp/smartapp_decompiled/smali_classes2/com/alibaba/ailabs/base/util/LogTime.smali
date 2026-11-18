.class public Lcom/alibaba/ailabs/base/util/LogTime;
.super Ljava/lang/Object;
.source "LogTime.java"


# static fields
.field public static final SHOW:Ljava/lang/Boolean;

.field private static final TAG:Ljava/lang/String; = "LogTime"

.field private static onlyPageArray:[Ljava/lang/String;

.field private static timeMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/base/bean/TimeMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/base/util/LogTime;->SHOW:Ljava/lang/Boolean;

    const-string v0, "DetailsActivity"

    .line 27
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/base/util/LogTime;->onlyPageArray:[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lcom/alibaba/ailabs/base/util/LogTime;->onlyPageArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .line 13
    sget-object v0, Lcom/alibaba/ailabs/base/util/LogTime;->timeMessageList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 13
    sput-object p0, Lcom/alibaba/ailabs/base/util/LogTime;->timeMessageList:Ljava/util/List;

    return-object p0
.end method

.method public static clearTime()V
    .locals 1

    .line 100
    new-instance v0, Lcom/alibaba/ailabs/base/util/LogTime$3;

    invoke-direct {v0}, Lcom/alibaba/ailabs/base/util/LogTime$3;-><init>()V

    invoke-static {v0}, Lcom/alibaba/ailabs/tg/thread/MainTaskHandler;->post(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 36
    new-instance v0, Lcom/alibaba/ailabs/base/util/LogTime$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/base/util/LogTime$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/tg/thread/MainTaskHandler;->post(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static showIntervalTime()V
    .locals 1

    .line 67
    new-instance v0, Lcom/alibaba/ailabs/base/util/LogTime$2;

    invoke-direct {v0}, Lcom/alibaba/ailabs/base/util/LogTime$2;-><init>()V

    invoke-static {v0}, Lcom/alibaba/ailabs/tg/thread/MainTaskHandler;->post(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
