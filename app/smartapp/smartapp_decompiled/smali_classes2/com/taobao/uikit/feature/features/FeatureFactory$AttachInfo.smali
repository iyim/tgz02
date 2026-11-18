.class Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;
.super Ljava/lang/Object;
.source "FeatureFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/feature/features/FeatureFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttachInfo"
.end annotation


# instance fields
.field id:I

.field priority:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;->id:I

    .line 33
    iput p2, p0, Lcom/taobao/uikit/feature/features/FeatureFactory$AttachInfo;->priority:I

    return-void
.end method
