.class public Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy$Node;
.super Ljava/lang/Object;
.source "TemplateHierarchy.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation


# instance fields
.field public data:Lcom/alibaba/fastjson/JSONObject;

.field public event:Lcom/alibaba/fastjson/JSONObject;

.field public position:Ljava/lang/String;

.field public style:Lcom/alibaba/fastjson/JSONObject;

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
