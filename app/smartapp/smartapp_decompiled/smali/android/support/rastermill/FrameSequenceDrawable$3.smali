.class Landroid/support/rastermill/FrameSequenceDrawable$3;
.super Ljava/lang/Object;
.source "FrameSequenceDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/rastermill/FrameSequenceDrawable;-><init>(Landroid/support/rastermill/FrameSequence;Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/rastermill/FrameSequenceDrawable;

.field final synthetic val$bitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

.field final synthetic val$byteBuffer:Ljava/nio/ByteBuffer;

.field final synthetic val$frameSequence:Landroid/support/rastermill/FrameSequence;


# direct methods
.method constructor <init>(Landroid/support/rastermill/FrameSequenceDrawable;Landroid/support/rastermill/FrameSequence;Ljava/nio/ByteBuffer;Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;)V
    .locals 0

    .line 331
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceDrawable$3;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    iput-object p2, p0, Landroid/support/rastermill/FrameSequenceDrawable$3;->val$frameSequence:Landroid/support/rastermill/FrameSequence;

    iput-object p3, p0, Landroid/support/rastermill/FrameSequenceDrawable$3;->val$byteBuffer:Ljava/nio/ByteBuffer;

    iput-object p4, p0, Landroid/support/rastermill/FrameSequenceDrawable$3;->val$bitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 334
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable$3;->val$frameSequence:Landroid/support/rastermill/FrameSequence;

    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequence;->getRawByteData()[B

    move-result-object v0

    invoke-static {v0}, Landroid/support/rastermill/FrameSequence;->decodeByteArray([B)Landroid/support/rastermill/FrameSequence;

    move-result-object v0

    .line 335
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable$3;->val$byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 336
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable$3;->this$0:Landroid/support/rastermill/FrameSequenceDrawable;

    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable$3;->val$bitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    invoke-static {v1, v0, v2}, Landroid/support/rastermill/FrameSequenceDrawable;->access$1000(Landroid/support/rastermill/FrameSequenceDrawable;Landroid/support/rastermill/FrameSequence;Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;)V

    return-void
.end method
