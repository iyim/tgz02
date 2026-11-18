.class public Lcom/alibaba/android/ultron/engine/protocol/ComponentView;
.super Lcom/alibaba/android/ultron/engine/protocol/BaseProtocol;
.source "ComponentView.java"


# instance fields
.field public containerType:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public md5:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public type:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public url:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/protocol/BaseProtocol;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
