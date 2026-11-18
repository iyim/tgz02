.class Lcom/alibaba/ailabs/childmode/ui/page/WarningActivity$1;
.super Ljava/lang/Object;
.source "WarningActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/childmode/ui/page/WarningActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/childmode/ui/page/WarningActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/childmode/ui/page/WarningActivity;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/WarningActivity$1;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/WarningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 33
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/WarningActivity$1;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/WarningActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/page/WarningActivity;->finish()V

    return-void
.end method
