.class public interface abstract Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;
.super Ljava/lang/Object;
.source "ChildFaceIdentifyContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChildFaceClickInterface"
.end annotation


# static fields
.field public static final ERROR_TTS_CODE:I = -0x2

.field public static final NORMAL_TTS_CODE:I = 0x0

.field public static final NOTIFY_TTS_CODE:I = 0x2

.field public static final SUCCESS_TTS_CODE:I = 0x1

.field public static final TIMEOUT_TTS_CODE:I = -0x1


# virtual methods
.method public abstract onCancelViewClicked(Landroid/view/View;)V
.end method

.method public abstract onSwitchPasswordViewClicked(Landroid/view/View;)V
.end method

.method public abstract onTTSPlayEngineCalled(ILjava/lang/String;)V
.end method
