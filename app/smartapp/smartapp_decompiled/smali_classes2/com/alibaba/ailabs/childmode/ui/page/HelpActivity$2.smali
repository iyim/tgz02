.class Lcom/alibaba/ailabs/childmode/ui/page/HelpActivity$2;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 63
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/HelpActivity$2;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/HelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p1, "HelpActivity"

    const-string p2, "inner touch consumed "

    .line 66
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
