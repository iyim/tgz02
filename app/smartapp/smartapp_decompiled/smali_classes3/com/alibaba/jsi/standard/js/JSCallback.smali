.class public Lcom/alibaba/jsi/standard/js/JSCallback;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCallConstructor(Lcom/alibaba/jsi/standard/js/Arguments;)Lcom/alibaba/jsi/standard/js/JSValue;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCallFunction(Lcom/alibaba/jsi/standard/js/Arguments;)Lcom/alibaba/jsi/standard/js/JSValue;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDeleteIndexedProperty(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;I)Z
    .locals 0

    .line 90
    invoke-virtual {p2}, Lcom/alibaba/jsi/standard/js/JSValue;->delete()V

    const/4 p1, 0x1

    return p1
.end method

.method public onDeleteNamedProperty(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;Ljava/lang/String;)Z
    .locals 0

    .line 59
    invoke-virtual {p2}, Lcom/alibaba/jsi/standard/js/JSValue;->delete()V

    const/4 p1, 0x1

    return p1
.end method

.method public onEnumerateIndexedProperty(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;)[Lcom/alibaba/jsi/standard/js/JSValue;
    .locals 0

    .line 96
    invoke-virtual {p2}, Lcom/alibaba/jsi/standard/js/JSValue;->delete()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onEnumerateNamedProperty(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;)[Lcom/alibaba/jsi/standard/js/JSValue;
    .locals 0

    .line 64
    invoke-virtual {p2}, Lcom/alibaba/jsi/standard/js/JSValue;->delete()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onGetIndexedProperty(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;I)Lcom/alibaba/jsi/standard/js/JSValue;
    .locals 0

    .line 71
    invoke-virtual {p2}, Lcom/alibaba/jsi/standard/js/JSValue;->delete()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onGetNamedProperty(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;Ljava/lang/String;)Lcom/alibaba/jsi/standard/js/JSValue;
    .locals 0

    .line 40
    invoke-virtual {p2}, Lcom/alibaba/jsi/standard/js/JSValue;->delete()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onGetProperty(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;Ljava/lang/String;)Lcom/alibaba/jsi/standard/js/JSValue;
    .locals 0

    .line 27
    invoke-virtual {p2}, Lcom/alibaba/jsi/standard/js/JSValue;->delete()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onQueryIndexedProperty(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;I)I
    .locals 0

    .line 84
    invoke-virtual {p2}, Lcom/alibaba/jsi/standard/js/JSValue;->delete()V

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryNamedProperty(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;Ljava/lang/String;)I
    .locals 0

    .line 53
    invoke-virtual {p2}, Lcom/alibaba/jsi/standard/js/JSValue;->delete()V

    const/4 p1, 0x0

    return p1
.end method

.method public onSetIndexedProperty(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;ILcom/alibaba/jsi/standard/js/JSValue;)Lcom/alibaba/jsi/standard/js/JSValue;
    .locals 0

    .line 77
    invoke-virtual {p2}, Lcom/alibaba/jsi/standard/js/JSValue;->delete()V

    .line 78
    invoke-virtual {p4}, Lcom/alibaba/jsi/standard/js/JSValue;->delete()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onSetNamedProperty(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;Ljava/lang/String;Lcom/alibaba/jsi/standard/js/JSValue;)Lcom/alibaba/jsi/standard/js/JSValue;
    .locals 0

    .line 46
    invoke-virtual {p2}, Lcom/alibaba/jsi/standard/js/JSValue;->delete()V

    .line 47
    invoke-virtual {p4}, Lcom/alibaba/jsi/standard/js/JSValue;->delete()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onSetProperty(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;Ljava/lang/String;Lcom/alibaba/jsi/standard/js/JSValue;)V
    .locals 0

    .line 33
    invoke-virtual {p2}, Lcom/alibaba/jsi/standard/js/JSValue;->delete()V

    .line 34
    invoke-virtual {p4}, Lcom/alibaba/jsi/standard/js/JSValue;->delete()V

    return-void
.end method
