.class public Lcom/alibaba/android/ultron/engine/model/Block;
.super Ljava/lang/Object;
.source "Block.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public blockTypeEnum:Ljava/lang/String;

.field public components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/android/ultron/engine/model/TemplateComponent;",
            ">;"
        }
    .end annotation
.end field

.field public description:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public position:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
