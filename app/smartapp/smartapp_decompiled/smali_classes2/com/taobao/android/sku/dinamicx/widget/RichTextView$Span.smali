.class public Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;
.super Ljava/lang/Object;
.source "RichTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/sku/dinamicx/widget/RichTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Span"
.end annotation


# instance fields
.field public end:I

.field public flags:I

.field public spans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x21

    .line 439
    iput v0, p0, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;->flags:I

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/sku/dinamicx/widget/RichTextView$Span;->spans:Ljava/util/List;

    return-void
.end method
