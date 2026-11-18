.class public Lcom/taobao/android/dinamicx/ItemSize;
.super Ljava/lang/Object;
.source "ItemSize.java"


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/taobao/android/dinamicx/ItemSize;->width:I

    .line 14
    iput p2, p0, Lcom/taobao/android/dinamicx/ItemSize;->height:I

    return-void
.end method
