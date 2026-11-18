.class Lcom/alibaba/ailabs/basedomain/ui/ExitView$2;
.super Ljava/lang/Object;
.source "ExitView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/ExitView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/ExitView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/ExitView;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/ExitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "ExitView"

    const-string v0, "You click home"

    .line 73
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/ExitView$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/ExitView;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/ExitView;->access$400(Lcom/alibaba/ailabs/basedomain/ui/ExitView;)V

    return-void
.end method
