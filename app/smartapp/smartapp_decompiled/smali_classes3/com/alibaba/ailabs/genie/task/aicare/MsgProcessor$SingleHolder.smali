.class public Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor$SingleHolder;
.super Ljava/lang/Object;
.source "MsgProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleHolder"
.end annotation


# static fields
.field public static instance:Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;-><init>(Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor$1;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor$SingleHolder;->instance:Lcom/alibaba/ailabs/genie/task/aicare/MsgProcessor;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
