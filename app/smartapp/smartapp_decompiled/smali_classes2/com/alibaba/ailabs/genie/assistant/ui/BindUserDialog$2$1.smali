.class Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;
.super Ljava/lang/Object;
.source "BindUserDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;

.field final synthetic val$codeBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$screenHeight:I

.field final synthetic val$screenWidth:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;IILandroid/graphics/Bitmap;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;

    iput p2, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->val$screenWidth:I

    iput p3, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->val$screenHeight:I

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->val$codeBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 284
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->val$screenWidth:I

    const/16 v1, 0x500

    if-ne v1, v0, :cond_0

    const/16 v0, 0x320

    iget v1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->val$screenHeight:I

    if-ne v0, v1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;

    iget-object v1, v0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    iget v2, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->val$screenHeight:I

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->access$400(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->access$300(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)Landroid/content/Context;

    move-result-object v0

    const/high16 v8, 0x440c0000    # 560.0f

    invoke-static {v0, v8}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->dp2px(Landroid/content/Context;F)I

    move-result v4

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->access$300(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)Landroid/content/Context;

    move-result-object v0

    const/high16 v9, 0x43360000    # 182.0f

    invoke-static {v0, v9}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->dp2px(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->setMargins(ILandroid/view/View;IIII)V

    .line 286
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;

    iget-object v1, v0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    iget v2, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->val$screenHeight:I

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->access$500(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->access$300(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->dp2px(Landroid/content/Context;F)I

    move-result v4

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->access$300(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->dp2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->setMargins(ILandroid/view/View;IIII)V

    goto/16 :goto_4

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;

    iget-object v1, v0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    iget v2, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->val$screenHeight:I

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->access$400(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->access$300(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)Landroid/content/Context;

    move-result-object v0

    iget v4, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->val$screenHeight:I

    const/high16 v8, 0x44300000    # 704.0f

    const/high16 v9, 0x44170000    # 604.0f

    const/16 v10, 0x258

    if-ge v4, v10, :cond_1

    const/high16 v4, 0x44300000    # 704.0f

    goto :goto_0

    :cond_1
    const/high16 v4, 0x44170000    # 604.0f

    :goto_0
    invoke-static {v0, v4}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->dp2px(Landroid/content/Context;F)I

    move-result v4

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->access$300(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)Landroid/content/Context;

    move-result-object v0

    iget v5, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->val$screenHeight:I

    const/high16 v11, 0x43320000    # 178.0f

    const/high16 v12, 0x43300000    # 176.0f

    if-ge v5, v10, :cond_2

    const/high16 v5, 0x43320000    # 178.0f

    goto :goto_1

    :cond_2
    const/high16 v5, 0x43300000    # 176.0f

    :goto_1
    invoke-static {v0, v5}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->dp2px(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->setMargins(ILandroid/view/View;IIII)V

    .line 289
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;

    iget-object v1, v0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    iget v2, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->val$screenHeight:I

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->access$500(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->access$300(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)Landroid/content/Context;

    move-result-object v0

    iget v4, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->val$screenHeight:I

    if-ge v4, v10, :cond_3

    goto :goto_2

    :cond_3
    const/high16 v8, 0x44170000    # 604.0f

    :goto_2
    invoke-static {v0, v8}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->dp2px(Landroid/content/Context;F)I

    move-result v4

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->access$300(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)Landroid/content/Context;

    move-result-object v0

    iget v5, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->val$screenHeight:I

    if-ge v5, v10, :cond_4

    goto :goto_3

    :cond_4
    const/high16 v11, 0x43300000    # 176.0f

    :goto_3
    invoke-static {v0, v11}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->dp2px(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->setMargins(ILandroid/view/View;IIII)V

    .line 292
    :goto_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->access$400(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->val$codeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 293
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->access$600(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->access$500(Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog$2;->val$content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BindUserDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
