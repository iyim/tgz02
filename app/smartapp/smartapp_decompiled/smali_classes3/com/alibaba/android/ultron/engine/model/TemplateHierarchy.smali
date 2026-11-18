.class public Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy;
.super Ljava/lang/Object;
.source "TemplateHierarchy.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy$Node;
    }
.end annotation


# instance fields
.field public nodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy$Node;",
            ">;"
        }
    .end annotation
.end field

.field public root:Ljava/lang/String;

.field public structure:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
