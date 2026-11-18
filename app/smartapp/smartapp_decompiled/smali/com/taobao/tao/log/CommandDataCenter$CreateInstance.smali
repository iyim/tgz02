.class Lcom/taobao/tao/log/CommandDataCenter$CreateInstance;
.super Ljava/lang/Object;
.source "CommandDataCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/log/CommandDataCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreateInstance"
.end annotation


# static fields
.field private static instance:Lcom/taobao/tao/log/CommandDataCenter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/taobao/tao/log/CommandDataCenter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/tao/log/CommandDataCenter;-><init>(Lcom/taobao/tao/log/CommandDataCenter$1;)V

    sput-object v0, Lcom/taobao/tao/log/CommandDataCenter$CreateInstance;->instance:Lcom/taobao/tao/log/CommandDataCenter;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Lcom/taobao/tao/log/CommandDataCenter;
    .locals 1

    .line 20
    sget-object v0, Lcom/taobao/tao/log/CommandDataCenter$CreateInstance;->instance:Lcom/taobao/tao/log/CommandDataCenter;

    return-object v0
.end method
