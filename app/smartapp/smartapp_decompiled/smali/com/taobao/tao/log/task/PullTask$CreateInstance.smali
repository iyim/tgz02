.class Lcom/taobao/tao/log/task/PullTask$CreateInstance;
.super Ljava/lang/Object;
.source "PullTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/log/task/PullTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreateInstance"
.end annotation


# static fields
.field private static instance:Lcom/taobao/tao/log/task/PullTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/taobao/tao/log/task/PullTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/tao/log/task/PullTask;-><init>(Lcom/taobao/tao/log/task/PullTask$1;)V

    sput-object v0, Lcom/taobao/tao/log/task/PullTask$CreateInstance;->instance:Lcom/taobao/tao/log/task/PullTask;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Lcom/taobao/tao/log/task/PullTask;
    .locals 1

    .line 42
    sget-object v0, Lcom/taobao/tao/log/task/PullTask$CreateInstance;->instance:Lcom/taobao/tao/log/task/PullTask;

    return-object v0
.end method
