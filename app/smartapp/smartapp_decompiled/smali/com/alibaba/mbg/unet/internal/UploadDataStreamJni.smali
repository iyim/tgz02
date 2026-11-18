.class public final Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/alibaba/mbg/unet/internal/UploadDataSink;


# annotations
.annotation build Lcom/alibaba/mbg/unet/Api;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni$Delegate;
    }
.end annotation

.annotation runtime Lunet/org/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field public mDelegate:Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni$Delegate;


# direct methods
.method public constructor <init>(Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni$Delegate;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni;->mDelegate:Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni$Delegate;

    return-void
.end method

.method public static native nativeDestroy(J)V
    .annotation runtime Lunet/org/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method


# virtual methods
.method public final native nativeAttachUploadDataToRequest(JJ)J
.end method

.method public final native nativeOnReadSucceeded(JIZ)V
    .annotation runtime Lunet/org/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method public final native nativeOnRewindSucceeded(J)V
    .annotation runtime Lunet/org/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method public final onReadError(Ljava/lang/Exception;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni;->mDelegate:Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni$Delegate;

    invoke-interface {v0, p1}, Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni$Delegate;->onReadError(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onReadSucceeded(Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni;->mDelegate:Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni$Delegate;

    invoke-interface {v0, p1}, Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni$Delegate;->onReadSucceeded(Z)V

    return-void
.end method

.method public final onRewindError(Ljava/lang/Exception;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni;->mDelegate:Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni$Delegate;

    invoke-interface {v0, p1}, Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni$Delegate;->onRewindError(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onRewindSucceeded()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni;->mDelegate:Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni$Delegate;

    invoke-interface {v0}, Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni$Delegate;->onRewindSucceeded()V

    return-void
.end method

.method final onUploadDataStreamDestroyed()V
    .locals 1
    .annotation build Lunet/org/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni;->mDelegate:Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni$Delegate;

    invoke-interface {v0}, Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni$Delegate;->onUploadDataStreamDestroyed()V

    return-void
.end method

.method final readData(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation build Lunet/org/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni;->mDelegate:Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni$Delegate;

    invoke-interface {v0, p1}, Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni$Delegate;->readData(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method final rewind()V
    .locals 1
    .annotation build Lunet/org/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni;->mDelegate:Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni$Delegate;

    invoke-interface {v0}, Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni$Delegate;->rewind()V

    return-void
.end method
