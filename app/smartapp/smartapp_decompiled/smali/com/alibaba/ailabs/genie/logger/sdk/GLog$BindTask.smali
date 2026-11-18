.class Lcom/alibaba/ailabs/genie/logger/sdk/GLog$BindTask;
.super Ljava/util/TimerTask;
.source "GLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/logger/sdk/GLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BindTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/logger/sdk/GLog$1;)V
    .locals 0

    .line 196
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog$BindTask;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 200
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "rebindLogservice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->access$500()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
