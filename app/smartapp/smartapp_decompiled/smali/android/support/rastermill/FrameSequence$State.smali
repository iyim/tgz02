.class Landroid/support/rastermill/FrameSequence$State;
.super Ljava/lang/Object;
.source "FrameSequence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/rastermill/FrameSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field private mNativeState:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-wide p1, p0, Landroid/support/rastermill/FrameSequence$State;->mNativeState:J

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 5

    .line 204
    iget-wide v0, p0, Landroid/support/rastermill/FrameSequence$State;->mNativeState:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 205
    invoke-static {v0, v1}, Landroid/support/rastermill/FrameSequence;->access$000(J)V

    .line 206
    iput-wide v2, p0, Landroid/support/rastermill/FrameSequence$State;->mNativeState:J

    :cond_0
    return-void
.end method

.method public getFrame(ILandroid/graphics/Bitmap;I)J
    .locals 5

    if-eqz p2, :cond_1

    .line 214
    iget-wide v0, p0, Landroid/support/rastermill/FrameSequence$State;->mNativeState:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 217
    invoke-static {v0, v1, p1, p2, p3}, Landroid/support/rastermill/FrameSequence;->access$100(JILandroid/graphics/Bitmap;I)J

    move-result-wide v0

    .line 220
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFrame() called "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " size = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p1

    div-int/lit16 p1, p1, 0x400

    div-int/lit16 p1, p1, 0x400

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " M"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "circus"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    .line 215
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "attempted to draw destroyed FrameSequenceState"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 212
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bitmap passed must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
