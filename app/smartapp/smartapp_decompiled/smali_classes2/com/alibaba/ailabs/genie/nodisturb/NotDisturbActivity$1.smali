.class Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$1;
.super Ljava/lang/Object;
.source "NotDisturbActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$1;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "NotDisturbActivity"

    :try_start_0
    const-string v0, "startExternalApp TimeDisturbActivity"

    .line 132
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 134
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$1;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 136
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$1;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 138
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error:startExternalApp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method
