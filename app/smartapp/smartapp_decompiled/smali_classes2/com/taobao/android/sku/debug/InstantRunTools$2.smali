.class final Lcom/taobao/android/sku/debug/InstantRunTools$2;
.super Ljava/lang/Object;
.source "InstantRunTools.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/sku/debug/InstantRunTools;->writeDebugFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dataFile:Ljava/lang/String;

.field final synthetic val$dialog:Lcom/taobao/android/sku/widget/ExtraDialog;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Lcom/taobao/android/sku/widget/ExtraDialog;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/taobao/android/sku/debug/InstantRunTools$2;->val$editText:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/taobao/android/sku/debug/InstantRunTools$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/taobao/android/sku/debug/InstantRunTools$2;->val$dataFile:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/android/sku/debug/InstantRunTools$2;->val$dialog:Lcom/taobao/android/sku/widget/ExtraDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 188
    :try_start_0
    iget-object p1, p0, Lcom/taobao/android/sku/debug/InstantRunTools$2;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 190
    iget-object v0, p0, Lcom/taobao/android/sku/debug/InstantRunTools$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/android/sku/debug/InstantRunTools$2;->val$dataFile:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 191
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 192
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 193
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 195
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/android/sku/utils/SkuLogUtils;->loge(Ljava/lang/String;)V

    .line 197
    :goto_0
    iget-object p1, p0, Lcom/taobao/android/sku/debug/InstantRunTools$2;->val$dialog:Lcom/taobao/android/sku/widget/ExtraDialog;

    invoke-virtual {p1}, Lcom/taobao/android/sku/widget/ExtraDialog;->dismiss()V

    return-void
.end method
