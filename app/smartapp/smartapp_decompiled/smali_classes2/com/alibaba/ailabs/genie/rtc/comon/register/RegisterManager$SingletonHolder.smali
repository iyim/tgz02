.class Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$SingletonHolder;
.super Ljava/lang/Object;
.source "RegisterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final instance:Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;-><init>(Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$1;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$SingletonHolder;->instance:Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;
    .locals 1

    .line 30
    sget-object v0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$SingletonHolder;->instance:Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;

    return-object v0
.end method
