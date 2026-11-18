.class Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$InstanceHolder;
.super Ljava/lang/Object;
.source "GestureAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field static instance:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 161
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$InstanceHolder;->instance:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
