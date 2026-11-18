.class public Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;
.super Ljava/lang/Object;
.source "DXLayoutParamAttribute.java"


# instance fields
.field public heightAttr:I

.field public layoutGravityAttr:I

.field public oldGravity:I

.field public weightAttr:D

.field public widthAttr:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->layoutGravityAttr:I

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->oldGravity:I

    return-void
.end method
