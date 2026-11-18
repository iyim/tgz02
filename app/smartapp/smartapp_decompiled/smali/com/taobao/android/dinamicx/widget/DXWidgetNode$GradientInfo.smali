.class public Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;
.super Ljava/lang/Object;
.source "DXWidgetNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GradientInfo"
.end annotation


# instance fields
.field private gradientType:I

.field private linearGradientColors:[I

.field private linearGradientDirection:Landroid/graphics/drawable/GradientDrawable$Orientation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2805
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;->gradientType:I

    return-void
.end method


# virtual methods
.method public getGradientType()I
    .locals 1

    .line 2830
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;->gradientType:I

    return v0
.end method

.method public getLinearGradientColors()[I
    .locals 1

    .line 2822
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;->linearGradientColors:[I

    return-object v0
.end method

.method public getLinearGradientDirection()Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 1

    .line 2814
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;->linearGradientDirection:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object v0
.end method

.method public setGradientType(I)V
    .locals 0

    .line 2834
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;->gradientType:I

    return-void
.end method

.method public setLinearGradientColors([I)V
    .locals 0

    .line 2826
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;->linearGradientColors:[I

    return-void
.end method

.method public setLinearGradientDirection(Landroid/graphics/drawable/GradientDrawable$Orientation;)V
    .locals 0

    .line 2818
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;->linearGradientDirection:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-void
.end method
