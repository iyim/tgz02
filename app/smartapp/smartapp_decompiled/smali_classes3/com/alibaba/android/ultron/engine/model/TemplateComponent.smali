.class public Lcom/alibaba/android/ultron/engine/model/TemplateComponent;
.super Ljava/lang/Object;
.source "TemplateComponent.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/android/ultron/engine/model/TemplateComponent;",
            ">;"
        }
    .end annotation
.end field

.field public data:Lcom/alibaba/fastjson/JSONObject;

.field public event:Lcom/alibaba/fastjson/JSONObject;

.field public filter:Ljava/lang/String;

.field public frontComponentAddress:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public frontComponentId:Ljava/lang/Long;

.field public frontComponentMD5:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public frontComponentName:Ljava/lang/String;

.field public frontComponentVersion:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public name:Ljava/lang/String;

.field public rule:Ljava/lang/String;

.field public ruleId:Ljava/lang/Long;

.field public style:Ljava/lang/String;

.field public supportEvent:Lcom/alibaba/fastjson/JSONObject;

.field public tag:Ljava/lang/String;

.field public templateId:Ljava/lang/Long;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
