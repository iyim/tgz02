.class public interface abstract Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;
.super Ljava/lang/Object;
.source "ChildFaceIdentifyContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChildFaceIdentifyInterface"
.end annotation


# static fields
.field public static final NORMAL_ERROR_CODE:I = -0x1

.field public static final NORMAL_FAIL_CODE:I = -0x1


# virtual methods
.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onIdentifyFail(ILjava/lang/String;)V
.end method

.method public abstract onIdentifySuccess()V
.end method
