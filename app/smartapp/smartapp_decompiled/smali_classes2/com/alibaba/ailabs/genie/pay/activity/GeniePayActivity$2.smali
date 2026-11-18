.class Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$2;
.super Ljava/lang/Object;
.source "GeniePayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$2;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 90
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.MAIN"

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.HOME"

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$2;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$2;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->finish()V

    return-void
.end method
