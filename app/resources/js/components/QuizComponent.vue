<template>
    <div>
        <h1>Jaki masz budżet?</h1>
        <input v-model="budget" type="number" placeholder="Podaj budżet" />

        <h1>Jak bardzo cenisz prowadzenie samochodu?</h1>
        <input v-model="handling" type="range" min="1" max="15" />

        <h1>Jak bardzo szybkie auto potrzebujesz?</h1>
        <input v-model="speed" type="range" min="1" max="15" />

        <h1>Jak bardzo zależy Ci na komforcie?</h1>
        <input v-model="comfort" type="range" min="1" max="15" />

        <h1>Jak bardzo zależy Ci na wyglądzie?</h1>
        <input v-model="looks" type="range" min="1" max="15" />

        <button @click="getCarProposals">Znajdź propozycje</button>
    </div>
</template>

<script>
export default {
    props: {
        car: Object,
    },
    data() {
        return {
            budget: 0,
            handling: 0,
            speed: 0,
            comfort: 0,
            looks: 0,
        };
    },
    methods: {
        getCarProposals() {
            axios.get(`http://localhost:8000/points/${this.budget}/${this.handling}/${this.speed}/${this.comfort}/${this.looks}`)
                .then(response => {
                    this.$emit('update-car', response.data.car);
                    this.$emit('update-car-proposals', response.data.carProposals);
                });
        },
    },
};
</script>
