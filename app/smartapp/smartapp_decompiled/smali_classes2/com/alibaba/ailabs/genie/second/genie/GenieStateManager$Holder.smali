.class Lcom/alibaba/ailabs/genie/second/genie/GenieStateManager$Holder;
.super Ljava/lang/Object;
.source "GenieStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/second/genie/GenieStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/alibaba/ailabs/genie/second/genie/GenieStateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/alibaba/ailabs/genie/second/genie/GenieStateManager;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/genie/GenieStateManager;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/second/genie/GenieStateManager$Holder;->INSTANCE:Lcom/alibaba/ailabs/genie/second/genie/GenieStateManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Lcom/alibaba/ailabs/genie/second/genie/GenieStateManager;
    .locals 1

    .line 9
    sget-object v0, Lcom/alibaba/ailabs/genie/second/genie/GenieStateManager$Holder;->INSTANCE:Lcom/alibaba/ailabs/genie/second/genie/GenieStateManager;

    return-object v0
.end method
