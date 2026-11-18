.class public interface abstract Lcom/alibaba/android/ultron/engine/template/ITemplateManager;
.super Ljava/lang/Object;
.source "ITemplateManager.java"


# virtual methods
.method public abstract initTemplate(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;
.end method

.method public abstract initTemplate(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;
.end method

.method public abstract renderUserData(Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;
.end method

.method public abstract renderUserData(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;
.end method

.method public abstract resetCurrentTemplate()V
.end method
