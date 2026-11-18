.class Lcom/alibaba/genie/shopping/mvp/BaseActivity$5;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/mvp/BaseActivity;->showCommonTitleBar(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/mvp/BaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/mvp/BaseActivity;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mvp/BaseActivity$5;->this$0:Lcom/alibaba/genie/shopping/mvp/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 189
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.MAIN"

    .line 191
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.HOME"

    .line 192
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mvp/BaseActivity$5;->this$0:Lcom/alibaba/genie/shopping/mvp/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :catch_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/mvp/BaseActivity$5;->this$0:Lcom/alibaba/genie/shopping/mvp/BaseActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->finish()V

    return-void
.end method
