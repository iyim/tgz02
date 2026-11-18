.class Lcom/alibaba/ailabs/childmode/ui/page/HelpActivity$1;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/childmode/ui/page/HelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/childmode/ui/page/HelpActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/childmode/ui/page/HelpActivity;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/HelpActivity$1;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/HelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "HelpActivity"

    const-string v0, "out click"

    .line 58
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/HelpActivity$1;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/HelpActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/page/HelpActivity;->finish()V

    return-void
.end method
