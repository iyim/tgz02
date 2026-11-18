.class Lcom/alibaba/ailabs/tg/UtilsConfig$SingletonHolder;
.super Ljava/lang/Object;
.source "UtilsConfig.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/tg/UtilsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/alibaba/ailabs/tg/UtilsConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/alibaba/ailabs/tg/UtilsConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/tg/UtilsConfig;-><init>(Lcom/alibaba/ailabs/tg/UtilsConfig$1;)V

    sput-object v0, Lcom/alibaba/ailabs/tg/UtilsConfig$SingletonHolder;->INSTANCE:Lcom/alibaba/ailabs/tg/UtilsConfig;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Lcom/alibaba/ailabs/tg/UtilsConfig;
    .locals 1

    .line 11
    sget-object v0, Lcom/alibaba/ailabs/tg/UtilsConfig$SingletonHolder;->INSTANCE:Lcom/alibaba/ailabs/tg/UtilsConfig;

    return-object v0
.end method
