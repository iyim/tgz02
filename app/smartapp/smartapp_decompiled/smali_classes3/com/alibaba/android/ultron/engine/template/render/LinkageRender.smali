.class public Lcom/alibaba/android/ultron/engine/template/render/LinkageRender;
.super Ljava/lang/Object;
.source "LinkageRender.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static render()Lcom/alibaba/android/ultron/engine/protocol/Linkage;
    .locals 1

    .line 12
    new-instance v0, Lcom/alibaba/android/ultron/engine/protocol/Linkage;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/engine/protocol/Linkage;-><init>()V

    return-object v0
.end method
