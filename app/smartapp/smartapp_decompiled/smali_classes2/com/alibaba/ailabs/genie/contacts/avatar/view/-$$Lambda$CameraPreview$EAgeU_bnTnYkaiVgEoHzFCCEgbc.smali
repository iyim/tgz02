.class public final synthetic Lcom/alibaba/ailabs/genie/contacts/avatar/view/-$$Lambda$CameraPreview$EAgeU_bnTnYkaiVgEoHzFCCEgbc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field private final synthetic f$0:Landroid/hardware/Camera$PictureCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/Camera$PictureCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/-$$Lambda$CameraPreview$EAgeU_bnTnYkaiVgEoHzFCCEgbc;->f$0:Landroid/hardware/Camera$PictureCallback;

    return-void
.end method


# virtual methods
.method public final onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/view/-$$Lambda$CameraPreview$EAgeU_bnTnYkaiVgEoHzFCCEgbc;->f$0:Landroid/hardware/Camera$PictureCallback;

    invoke-static {v0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->lambda$takePhoto$81(Landroid/hardware/Camera$PictureCallback;[BLandroid/hardware/Camera;)V

    return-void
.end method
