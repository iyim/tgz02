.class Lcom/taobao/tao/log/godeye/GodeyeInitializer$CreateInstance;
.super Ljava/lang/Object;
.source "GodeyeInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/log/godeye/GodeyeInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreateInstance"
.end annotation


# static fields
.field private static instance:Lcom/taobao/tao/log/godeye/GodeyeInitializer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/taobao/tao/log/godeye/GodeyeInitializer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/tao/log/godeye/GodeyeInitializer;-><init>(Lcom/taobao/tao/log/godeye/GodeyeInitializer$1;)V

    sput-object v0, Lcom/taobao/tao/log/godeye/GodeyeInitializer$CreateInstance;->instance:Lcom/taobao/tao/log/godeye/GodeyeInitializer;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Lcom/taobao/tao/log/godeye/GodeyeInitializer;
    .locals 1

    .line 40
    sget-object v0, Lcom/taobao/tao/log/godeye/GodeyeInitializer$CreateInstance;->instance:Lcom/taobao/tao/log/godeye/GodeyeInitializer;

    return-object v0
.end method
