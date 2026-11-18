.class Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$8;
.super Ljava/lang/Object;
.source "MessageClient.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->playShowAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$8;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v0, v0, p1

    mul-float p1, p1, p1

    sub-float/2addr v0, p1

    float-to-double v0, v0

    .line 412
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method
