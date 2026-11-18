.class public interface abstract Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient$onStatusListerner;
.super Ljava/lang/Object;
.source "ChildFaceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "onStatusListerner"
.end annotation


# static fields
.field public static final OPEN_CAMERA_FAILED:I = -0x1

.field public static final OPEN_CAMERA_SUCCESS:I = 0x0

.field public static final RACE_CAMERA_FAILED:I = -0x2


# virtual methods
.method public abstract onStatus(Ljava/lang/String;)V
.end method
