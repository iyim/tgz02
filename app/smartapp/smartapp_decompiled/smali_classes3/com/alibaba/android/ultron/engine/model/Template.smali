.class public Lcom/alibaba/android/ultron/engine/model/Template;
.super Ljava/lang/Object;
.source "Template.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public blocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/android/ultron/engine/model/Block;",
            ">;"
        }
    .end annotation
.end field

.field public hierarchy:Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy;

.field public name:Ljava/lang/String;

.field public style:Lcom/alibaba/fastjson/JSONObject;

.field public templateId:Ljava/lang/Long;

.field public version:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
