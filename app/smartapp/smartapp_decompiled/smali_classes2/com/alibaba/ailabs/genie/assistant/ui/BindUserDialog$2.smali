.class Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;
.super Ljava/lang/Object;
.source "BindUserDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->bindUser(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;Ljava/lang/String;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->access$400(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)Landroid/widget/ImageView;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "BindUserDialog"

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "QRcodeImg NULL"

    .line 271
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->access$300(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 276
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 277
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v3, 0x400

    if-le v2, v3, :cond_1

    const/16 v3, 0x1f4

    goto :goto_0

    :cond_1
    const/16 v3, 0x140

    .line 279
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " height= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;->val$content:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v3, v3, v4}, Lcom/alibaba/ailabs/google/zxing/EncodingHandler;->create2DCode(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 281
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->access$700(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;IILandroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 299
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
