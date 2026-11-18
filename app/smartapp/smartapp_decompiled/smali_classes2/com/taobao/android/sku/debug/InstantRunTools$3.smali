.class final Lcom/taobao/android/sku/debug/InstantRunTools$3;
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
.field final synthetic val$dialog:Lcom/taobao/android/sku/widget/ExtraDialog;


# direct methods
.method constructor <init>(Lcom/taobao/android/sku/widget/ExtraDialog;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/taobao/android/sku/debug/InstantRunTools$3;->val$dialog:Lcom/taobao/android/sku/widget/ExtraDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 203
    iget-object p1, p0, Lcom/taobao/android/sku/debug/InstantRunTools$3;->val$dialog:Lcom/taobao/android/sku/widget/ExtraDialog;

    invoke-virtual {p1}, Lcom/taobao/android/sku/widget/ExtraDialog;->dismiss()V

    return-void
.end method
