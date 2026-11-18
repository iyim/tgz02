.class Lcom/alibaba/ailabs/genie/second/genie/GenieSDK$SingletonHolder;
.super Ljava/lang/Object;
.source "GenieSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static mInstance:Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;-><init>(Lcom/alibaba/ailabs/genie/second/genie/GenieSDK$1;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK$SingletonHolder;->mInstance:Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

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

.method static synthetic access$100()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;
    .locals 1

    .line 20
    sget-object v0, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK$SingletonHolder;->mInstance:Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    return-object v0
.end method
