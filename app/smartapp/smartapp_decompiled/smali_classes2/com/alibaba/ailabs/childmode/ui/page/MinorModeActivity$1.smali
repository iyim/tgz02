.class Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$1;
.super Ljava/lang/Object;
.source "MinorModeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$1;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 96
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity$1;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/page/MinorModeActivity;->finish()V

    return-void
.end method
